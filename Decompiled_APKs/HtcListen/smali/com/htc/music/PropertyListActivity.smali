.class public Lcom/htc/music/PropertyListActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "PropertyListActivity.java"


# instance fields
.field private final PROPERTY_ALBUM:I

.field private final PROPERTY_ARTIST:I

.field private final PROPERTY_COMPOSER:I

.field private final PROPERTY_DISC_NUMBER:I

.field private final PROPERTY_DRM_TYPE:I

.field private final PROPERTY_FILENAME:I

.field private final PROPERTY_GENRE:I

.field private final PROPERTY_LENGTH:I

.field private final PROPERTY_LOCATION:I

.field private final PROPERTY_TRACK:I

.field private final PROPERTY_TRACK_NUMBER:I

.field private final PROPERTY_TRACK_YEAR:I

.field private TAG:Ljava/lang/String;

.field private isWMdrm:Z

.field private mAudiopreview:Z

.field private mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

.field private mDrmCursor:Landroid/database/Cursor;

.field private mOneShot:Z

.field private mPropertyAdapter:Landroid/widget/BaseAdapter;

.field private mPropertyList:Lcom/htc/widget/HtcListView;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackId:Ljava/lang/String;

.field minetype:Ljava/lang/String;

.field protected osc:Landroid/content/ServiceConnection;

.field private titleArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    const-string v0, "[PropertyListActivity]"

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_LENGTH:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_FILENAME:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_TRACK:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_ARTIST:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_ALBUM:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_GENRE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_COMPOSER:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_DISC_NUMBER:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_TRACK_NUMBER:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_TRACK_YEAR:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_LOCATION:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/htc/music/PropertyListActivity;->PROPERTY_DRM_TYPE:I

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/htc/music/PropertyListActivity;->isWMdrm:Z

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    iput-boolean v2, p0, Lcom/htc/music/PropertyListActivity;->mOneShot:Z

    iput-boolean v2, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    new-instance v0, Lcom/htc/music/PropertyListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/PropertyListActivity$1;-><init>(Lcom/htc/music/PropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->osc:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/htc/music/PropertyListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/PropertyListActivity$2;-><init>(Lcom/htc/music/PropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/PropertyListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/PropertyListActivity$3;-><init>(Lcom/htc/music/PropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/PropertyListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/PropertyListActivity$4;-><init>(Lcom/htc/music/PropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PropertyListActivity;->mPropertyAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/PropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/PropertyListActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/music/PropertyListActivity;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/PropertyListActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/PropertyListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/PropertyListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/music/PropertyListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/PropertyListActivity;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/PropertyListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/PropertyListActivity;->showPoperty()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/PropertyListActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/PropertyListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/PropertyListActivity;->isWMdrm:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/PropertyListActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/PropertyListActivity;)Landroid/provider/DrmStore$DrmConstraint;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    return-object v0
.end method

.method private showPoperty()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->init()V

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method private wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getDrmType(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const v1, 0x7f070083

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v1, 0x7f070085

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v1, 0x7f070084

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method getProperties(Z)[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f07007a

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f07007b

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f07007c

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f07007d

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f07007f

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f07007a

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f07007b

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f07007c

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f07007d

    invoke-virtual {p0, v2}, Lcom/htc/music/PropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method init()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    :cond_1
    iput-boolean v4, p0, Lcom/htc/music/PropertyListActivity;->isWMdrm:Z

    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    const/4 v1, 0x0

    const/16 v3, 0xc

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v4

    const-string v3, "artist"

    aput-object v3, v0, v7

    const/4 v3, 0x2

    const-string v4, "album"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "title"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "_data"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "mime_type"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "album_id"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "artist_id"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "composer"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "year"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "track"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "mime_type"

    aput-object v4, v0, v3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    const-string v5, "mime_type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->minetype:Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/music/PropertyListActivity;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/provider/DrmStore;->getDrmContrain(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    :cond_4
    :goto_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->minetype:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->minetype:Ljava/lang/String;

    const-string v4, "audio/x-wma-drm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iput-boolean v7, p0, Lcom/htc/music/PropertyListActivity;->isWMdrm:Z

    invoke-virtual {p0, v7}, Lcom/htc/music/PropertyListActivity;->getProperties(Z)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;

    :goto_3
    return-void

    :cond_5
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iput-object v6, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    goto :goto_2

    :cond_8
    invoke-direct {p0, v1}, Lcom/htc/music/PropertyListActivity;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/music/PropertyListActivity;->getProperties(Z)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/PropertyListActivity;->titleArray:[Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->setVolumeControlStream(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->requestWindowFeature(I)Z

    if-eqz p1, :cond_1

    const-string v1, "track"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    const-string v1, "oneshot"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mOneShot:Z

    const-string v1, "audiopreview"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    :goto_0
    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/PropertyListActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/PropertyListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/PropertyListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v1, 0x7f03004f

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->init()V

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/PropertyListActivity;->mPropertyAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/htc/music/PropertyListActivity;->setTitle(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "track"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "oneshot"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mOneShot:Z

    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "audiopreview"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/PropertyListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/PropertyListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mDrmCursor:Landroid/database/Cursor;

    :cond_1
    iput-object v1, p0, Lcom/htc/music/PropertyListActivity;->mDrmConstraint:Landroid/provider/DrmStore$DrmConstraint;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    iget-object v0, p0, Lcom/htc/music/PropertyListActivity;->mPropertyList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "oneshot"

    iget-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mOneShot:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "track"

    iget-object v1, p0, Lcom/htc/music/PropertyListActivity;->mTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audiopreview"

    iget-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUserLeaveHint()V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/music/PropertyListActivity;->mAudiopreview:Z

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "finish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/htc/music/PropertyListActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/music/PropertyListActivity;->finish()V

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onUserLeaveHint()V

    return-void
.end method
