.class public Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "CalendarEntry.java"


# instance fields
.field private accessLevel:B

.field private color:Ljava/lang/String;

.field private eventsUri:Ljava/lang/String;

.field private hidden:Z

.field private overrideName:Ljava/lang/String;

.field private selected:Z

.field private selfUri:Ljava/lang/String;

.field private timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 44
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->accessLevel:B

    .line 46
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->hidden:Z

    .line 48
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->selected:Z

    .line 49
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->overrideName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->selfUri:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->eventsUri:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "sb"

    .prologue
    const/16 v2, 0xa

    .line 186
    const-string v0, "ACCESS LEVEL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->accessLevel:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 189
    const-string v0, "SELF URI"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->selfUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "EDIT URI"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "EVENTS URI"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->eventsUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "COLOR"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "HIDDEN: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->hidden:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    const-string v0, "SELECTED: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->selected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 199
    const-string v0, "TIMEZONE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "OVERRIDE NAME"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->overrideName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method
