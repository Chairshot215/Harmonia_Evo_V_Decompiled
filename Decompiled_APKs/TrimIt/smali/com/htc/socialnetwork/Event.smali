.class public Lcom/htc/socialnetwork/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/htc/socialnetwork/Constants;


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.socialnetwork.event"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.socialnetwork.event"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TABLE_SQL:Ljava/lang/String; = "CREATE TABLE event (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, sid INTEGER NOT NULL, event_id INTEGER NOT NULL, uid INTEGER NOT NULL, name TEXT NOT NULL, creator TEXT NOT NULL, description TEXT, start_time INTEGER NOT NULL, end_time INTEGER NOT NULL, update_time INTEGER, is_read INTEGER NOT NULL, last_check_time INTEGER , UNIQUE( sid , event_id , uid ));"

.field public static final CREATOR:Ljava/lang/String; = "creator"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ENDTIME:Ljava/lang/String; = "end_time"

.field public static final EVENTID:Ljava/lang/String; = "event_id"

.field public static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field public static final EVENT_TABLE:Ljava/lang/String; = "event"

.field public static final ISREAD:Ljava/lang/String; = "is_read"

.field public static final LASTCHECKTIME:Ljava/lang/String; = "last_check_time"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final STARTTIME:Ljava/lang/String; = "start_time"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final UPDATETIME:Ljava/lang/String; = "update_time"


# instance fields
.field private mCreator:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mEndTime:J

.field private mEventMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mId:J

.field private mLocation:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "creator"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "update_time"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_read"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "last_check_time"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/socialnetwork/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 37
    const-string v0, "content://com.htc.socialnetwork.snprovider/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/socialnetwork/Event;->mCreator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/socialnetwork/Event;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/htc/socialnetwork/Event;->mEndTime:J

    return-wide v0
.end method

.method public getEventMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/socialnetwork/Event;->mEventMembers:Ljava/util/List;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/htc/socialnetwork/Event;->mId:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/socialnetwork/Event;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/socialnetwork/Event;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/htc/socialnetwork/Event;->mStartTime:J

    return-wide v0
.end method

.method public getUpdateTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/htc/socialnetwork/Event;->mUpdateTime:J

    return-wide v0
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0
    .parameter "creator_id"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/socialnetwork/Event;->mCreator:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/socialnetwork/Event;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/htc/socialnetwork/Event;->mEndTime:J

    return-void
.end method

.method public setEventMembers(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, members:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/socialnetwork/Event;->mEventMembers:Ljava/util/List;

    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/htc/socialnetwork/Event;->mId:J

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/socialnetwork/Event;->mLocation:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/socialnetwork/Event;->mName:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/htc/socialnetwork/Event;->mStartTime:J

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/htc/socialnetwork/Event;->mUpdateTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 91
    const-string v1, ""

    .line 92
    .local v1, members:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/socialnetwork/Event;->mEventMembers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/socialnetwork/Event;->mEventMembers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/socialnetwork/Event;->mEventMembers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0           #i:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/socialnetwork/Event;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/Event;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , creator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/Event;->mCreator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , description: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/Event;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , start time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/socialnetwork/Event;->mStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , end time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/socialnetwork/Event;->mEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , update time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/socialnetwork/Event;->mUpdateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , members: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
