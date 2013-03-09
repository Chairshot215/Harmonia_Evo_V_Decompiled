.class final Lcom/htc/sdcardwizard/handler/VoicesForLocationsHandler;
.super Lcom/htc/sdcardwizard/handler/NavigatorCategoriesHandler;
.source "VoicesForLocationsHandler.java"


# static fields
.field private static final DIRECTORY:Ljava/lang/String; = "/.data/navigator/Data/AudioRes"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 10
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.laputa"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/NavigatorCategoriesHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.data/navigator/Data/AudioRes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICES_FOR_LOCATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f040038

    return v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f040037

    return v0
.end method
