.class public Lcom/android/camera/TIME;
.super Ljava/lang/Object;
.source "TIME.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/TIME$Value;
    }
.end annotation


# static fields
.field public static AutoFocusCallback:Lcom/android/camera/TIME$Value; = null

.field public static JpegCallback:Lcom/android/camera/TIME$Value; = null

.field public static RawCallback:Lcom/android/camera/TIME$Value; = null

.field public static ReadyTakePicture:Lcom/android/camera/TIME$Value; = null

.field public static ShutterCallback:Lcom/android/camera/TIME$Value; = null

.field public static StartAlbumActivity:Lcom/android/camera/TIME$Value; = null

.field public static StoreJpegImage:Lcom/android/camera/TIME$Value; = null

.field private static final TAG:Ljava/lang/String; = "TIME"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/camera/TIME$Value;

    const-string v1, "AutoFocusCallback"

    invoke-direct {v0, v1}, Lcom/android/camera/TIME$Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TIME;->AutoFocusCallback:Lcom/android/camera/TIME$Value;

    new-instance v0, Lcom/android/camera/TIME$Value;

    const-string v1, "ReadyTakePicture"

    invoke-direct {v0, v1}, Lcom/android/camera/TIME$Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    new-instance v0, Lcom/android/camera/TIME$Value;

    const-string v1, "ShutterCallback"

    invoke-direct {v0, v1}, Lcom/android/camera/TIME$Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    new-instance v0, Lcom/android/camera/TIME$Value;

    const-string v1, "RawPictureCallback"

    invoke-direct {v0, v1}, Lcom/android/camera/TIME$Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    new-instance v0, Lcom/android/camera/TIME$Value;

    const-string v1, "JpegPictureCallback"

    invoke-direct {v0, v1}, Lcom/android/camera/TIME$Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    new-instance v0, Lcom/android/camera/TIME$Value;

    const-string v1, "StoreJpegImage"

    invoke-direct {v0, v1}, Lcom/android/camera/TIME$Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    new-instance v0, Lcom/android/camera/TIME$Value;

    const-string v1, "StartAlbumActivity"

    invoke-direct {v0, v1}, Lcom/android/camera/TIME$Value;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TIME;->StartAlbumActivity:Lcom/android/camera/TIME$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
