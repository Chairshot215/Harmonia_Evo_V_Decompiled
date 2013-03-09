.class public Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "CalendarEntry.java"


# instance fields
.field private accessLevel:B

.field private alternateLink:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private hidden:Z

.field private overrideName:Ljava/lang/String;

.field private selected:Z

.field private timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 44
    iput-byte v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    .line 46
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    .line 49
    iput-boolean v2, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    .line 50
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->overrideName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "sb"

    .prologue
    const/16 v2, 0xa

    .line 169
    const-string v0, "ACCESS LEVEL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    iget-byte v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->accessLevel:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    const-string v0, "ALTERNATE LINK"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "COLOR"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "HIDDEN: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->hidden:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    const-string v0, "SELECTED: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    iget-boolean v0, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->selected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    const-string v0, "TIMEZONE"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "OVERRIDE NAME"

    iget-object v1, p0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->overrideName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method
