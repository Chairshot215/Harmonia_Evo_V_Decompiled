.class public Lcom/htc/android/rosie/home/fxcontrol/FxScreen$ItemNotFoundException;
.super Ljava/lang/RuntimeException;
.source "FxScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemNotFoundException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1209
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1210
    return-void
.end method
