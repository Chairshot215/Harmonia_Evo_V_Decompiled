.class final Lcom/htc/sdcardwizard/handler/MusicHandler;
.super Lcom/htc/sdcardwizard/handler/MediaStoreHandler;
.source "MusicHandler.java"


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.htc.music"

.field private static final SELECTION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/sdcardwizard/handler/VoiceRecorderHandler;->SELECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_alarm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0) AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0) AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_podcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0) AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/handler/MusicHandler;->SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 12
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v1, "com.htc.music"

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/sdcardwizard/handler/MusicHandler;->SELECTION:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/handler/MediaStoreHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->MUSIC:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f04001b

    return v0
.end method

.method protected getDirectoryOnSd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/music/"

    return-object v0
.end method

.method protected getItemIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "iconId"
    .parameter "defaultIcon"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f040026

    return v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/MusicHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f040025

    return v0
.end method
