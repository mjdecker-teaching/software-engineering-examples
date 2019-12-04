class bird {
private:
	std::string type;
	int airspeed;
public:

	std::string get_type() const {
		return type;
	}

	void set_type(const std::string & type) {
		this->type = type;
	}

	virtual int velocity() const = 0;

};

class european : public bird {
public:
	virtual velocity() const {
		return airspeed;
	}


};

class africa : public bird {
private:
	int number_of_coconuts;
	int load_factor;
public:
	int get_number_of_coconuts() const {
		return number_of_coconuts;
	}

	void set_number_of_coconuts(int number_of_coconuts) {
		this->number_of_coconuts = number_of_coconuts;
	}

	virtual velocity() const {
		return airspeed - load_factor * number_of_coconuts;
	}


};
