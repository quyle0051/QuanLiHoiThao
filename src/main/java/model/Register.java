package model;

public class Register {
    private int id;
    private String fullname;
    private String email;
    private String phone;
    private String type;
    private String eventName;

    public Register() {}

    public Register(String fullname, String email, String phone, String type, String eventName) {
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.type = type;
        this.eventName = eventName;
    }

    // Getter - Setter
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getFullname() { return fullname; }
    public void setFullname(String fullname) { this.fullname = fullname; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getType() { return type; }
    public void setType(String type) { this.type = type; }
    public String getEventName() { return eventName; }
    public void setEventName(String eventName) { this.eventName = eventName; }
}
