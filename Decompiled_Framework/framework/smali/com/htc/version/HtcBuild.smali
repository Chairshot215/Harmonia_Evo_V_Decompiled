.class public Lcom/htc/version/HtcBuild;
.super Landroid/os/Build;
.source "HtcBuild.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Build;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/customization/CustomizationValueNotFoundException;
        }
    .end annotation

    const-string v0, "android.version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "htc.sense.version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/customization/CustomizationValueNotFoundException;

    invoke-direct {v0}, Lcom/htc/customization/CustomizationValueNotFoundException;-><init>()V

    throw v0
.end method
