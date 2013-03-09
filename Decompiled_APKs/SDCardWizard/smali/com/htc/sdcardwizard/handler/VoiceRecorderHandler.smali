.class final Lcom/htc/sdcardwizard/handler/VoiceRecorderHandler;
.super Lcom/htc/sdcardwizard/handler/MediaStoreHandler;
.source "VoiceRecorderHandler.java"


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.htc.soundrecorder"

.field private static final PATH0_POSTFIX:Ljava/lang/String; = "/My Documents/My Recordings"

.field private static final PATH1_POSTFIX:Ljava/lang/String; = "/.voicerecorder/voices"

.field public static final SELECTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->getStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/My Documents/My Recordings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, path0:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/sdcardwizard/utils/StoragePathHelper;->getStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.voicerecorder/voices"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, path1:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_data LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/%\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/sdcardwizard/handler/VoiceRecorderHandler;->SELECTION:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 13
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.soundrecorder"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/sdcardwizard/handler/VoiceRecorderHandler;->SELECTION:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICE_RECORDER:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f04001b

    return v0
.end method

.method protected getDirectoryOnSd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "/My Documents/My Recordings"

    return-object v0
.end method

.method protected getItemIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "iconId"
    .parameter "defaultIcon"

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f04003c

    return v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/VoiceRecorderHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 18
    const v0, 0x7f04003b

    return v0
.end method
