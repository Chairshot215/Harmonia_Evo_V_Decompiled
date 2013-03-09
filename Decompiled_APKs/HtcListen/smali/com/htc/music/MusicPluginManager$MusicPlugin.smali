.class public Lcom/htc/music/MusicPluginManager$MusicPlugin;
.super Ljava/lang/Object;
.source "MusicPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MusicPluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicPlugin"
.end annotation


# instance fields
.field private mArtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mArtMapShuffle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mNotifyIcon:Landroid/graphics/Bitmap;

.field private mPlayAtBeginning:Z

.field private mPluginClass:Ljava/lang/String;

.field private mPluginDescription:Ljava/lang/String;

.field private mPluginIcon:Landroid/graphics/Bitmap;

.field private mPluginName:Ljava/lang/String;

.field private mPluginPackage:Ljava/lang/String;

.field private mService:Lcom/htc/music/IMusicPluginService;

.field private mStartActivity:Z

.field final synthetic this$0:Lcom/htc/music/MusicPluginManager;


# direct methods
.method public constructor <init>(Lcom/htc/music/MusicPluginManager;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->this$0:Lcom/htc/music/MusicPluginManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Lcom/htc/music/IMusicPluginService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/MusicPluginManager$MusicPlugin;Lcom/htc/music/IMusicPluginService;)Lcom/htc/music/IMusicPluginService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/MusicPluginManager$MusicPlugin;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/MusicPluginManager$MusicPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method


# virtual methods
.method public getConnection()Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPlayAtBeginning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    return v0
.end method

.method public getPluginClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lcom/htc/music/IMusicPluginService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    return-object v0
.end method

.method public getStartActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    :cond_3
    iput-object v1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mArtMapShuffle:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    return-void
.end method

.method public setConnection(Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public setNotifyIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mNotifyIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPlayAtBeginning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPlayAtBeginning:Z

    return-void
.end method

.method public setPluginClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginClass:Ljava/lang/String;

    return-void
.end method

.method public setPluginDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginDescription:Ljava/lang/String;

    return-void
.end method

.method public setPluginIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPluginName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginName:Ljava/lang/String;

    return-void
.end method

.method public setPluginPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mPluginPackage:Ljava/lang/String;

    return-void
.end method

.method public setService(Lcom/htc/music/IMusicPluginService;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mService:Lcom/htc/music/IMusicPluginService;

    return-void
.end method

.method public setStartActivity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/MusicPluginManager$MusicPlugin;->mStartActivity:Z

    return-void
.end method
