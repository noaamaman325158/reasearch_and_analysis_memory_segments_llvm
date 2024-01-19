class IMyDataRepository {
public:
    virtual void Create(const std::string& key, const std::string& value) = 0;
    virtual std::string Read(const std::string& key) = 0;
    virtual void Update(const std::string& key, const std::string& value) = 0;
    virtual void Delete(const std::string& key) = 0;
    virtual ~IMyDataRepository() {}
};
