.class public Lcom/htc/dockmode/shortcut/DefaultShortcut;
.super Ljava/lang/Object;
.source "DefaultShortcut.java"


# static fields
.field public static final APP_CLASSs:[Ljava/lang/String;

.field public static final APP_PACKAGENAMEs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.htc.album"

    aput-object v1, v0, v2

    const-string v1, "com.htc.connectedMedia"

    aput-object v1, v0, v3

    const-string v1, "com.htc.calendar"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/dockmode/shortcut/DefaultShortcut;->APP_PACKAGENAMEs:[Ljava/lang/String;

    .line 11
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.htc.album.addons.slideshow.SlideShow"

    aput-object v1, v0, v2

    const-string v1, "com.htc.connectedMedia.ConnectedMedia"

    aput-object v1, v0, v3

    const-string v1, "com.htc.calendar.LaunchActivity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/dockmode/shortcut/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
