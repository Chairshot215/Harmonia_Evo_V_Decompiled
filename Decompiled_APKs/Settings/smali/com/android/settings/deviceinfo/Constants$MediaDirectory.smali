.class Lcom/android/settings/deviceinfo/Constants$MediaDirectory;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaDirectory"
.end annotation


# instance fields
.field final mDirPaths:[Ljava/lang/String;

.field final mKey:Ljava/lang/String;

.field final mPreferenceName:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "pref"
    .parameter "debugInfo"
    .parameter "paths"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mDirPaths:[Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mKey:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Constants$MediaDirectory;->mPreferenceName:Ljava/lang/String;

    .line 43
    return-void
.end method
