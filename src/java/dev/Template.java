package dev;



import java.util.List;
import javax.annotation.Generated;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Generated("jsonschema2pojo")
public class Template {

    @SerializedName("id")
    @Expose
    private String id;
    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("lines")
    @Expose
    private Integer lines;
    @SerializedName("styles")
    @Expose
    private List<Object> styles = null;
    @SerializedName("blank")
    @Expose
    private String blank;
    @SerializedName("example")
    @Expose
    private String example;
    @SerializedName("source")
    @Expose
    private String source;
    @SerializedName("_self")
    @Expose
    private String self;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getLines() {
        return lines;
    }

    public void setLines(Integer lines) {
        this.lines = lines;
    }

    public List<Object> getStyles() {
        return styles;
    }

    public void setStyles(List<Object> styles) {
        this.styles = styles;
    }

    public String getBlank() {
        return blank;
    }

    public void setBlank(String blank) {
        this.blank = blank;
    }

    public String getExample() {
        return example;
    }

    public void setExample(String example) {
        this.example = example;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getSelf() {
        return self;
    }

    public void setSelf(String self) {
        this.self = self;
    }

}
