.class Ltwitter4j/Twitter$Device;
.super Ljava/lang/Object;
.source "Twitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/Twitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Device"
.end annotation


# instance fields
.field final DEVICE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 2318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2319
    iput-object p1, p0, Ltwitter4j/Twitter$Device;->DEVICE:Ljava/lang/String;

    .line 2320
    return-void
.end method
