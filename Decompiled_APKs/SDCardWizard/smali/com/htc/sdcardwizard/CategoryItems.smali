.class final Lcom/htc/sdcardwizard/CategoryItems;
.super Ljava/lang/Object;
.source "CategoryItems.java"


# static fields
.field private static final LOCATIONS_PACKAGE_NAME:Ljava/lang/String; = "com.htc.laputa"

.field private static final TAG:Ljava/lang/String;

.field private static final sizeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/htc/sdcardwizard/CategoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appsItem:Lcom/htc/sdcardwizard/CategoryItem;

.field private final contentItems:Lcom/htc/sdcardwizard/CategoryList;

.field private final tempFilesItem:Lcom/htc/sdcardwizard/CategoryItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LSCW/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/htc/sdcardwizard/CategoryItems;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sdcardwizard/CategoryItems;->TAG:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/htc/sdcardwizard/CategoryItems$2;

    invoke-direct {v0}, Lcom/htc/sdcardwizard/CategoryItems$2;-><init>()V

    sput-object v0, Lcom/htc/sdcardwizard/CategoryItems;->sizeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/htc/sdcardwizard/utils/PluralSingular;

    sget-object v3, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->FILE:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    invoke-direct {v0, p1, v3}, Lcom/htc/sdcardwizard/utils/PluralSingular;-><init>(Landroid/content/Context;Lcom/htc/sdcardwizard/utils/PluralSingular$Type;)V

    .line 25
    .local v0, psFiles:Lcom/htc/sdcardwizard/utils/PluralSingular;
    new-instance v1, Lcom/htc/sdcardwizard/utils/PluralSingular;

    sget-object v3, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->INSTALLED:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    invoke-direct {v1, p1, v3}, Lcom/htc/sdcardwizard/utils/PluralSingular;-><init>(Landroid/content/Context;Lcom/htc/sdcardwizard/utils/PluralSingular$Type;)V

    .line 26
    .local v1, psInstalled:Lcom/htc/sdcardwizard/utils/PluralSingular;
    new-instance v2, Lcom/htc/sdcardwizard/utils/PluralSingular;

    sget-object v3, Lcom/htc/sdcardwizard/utils/PluralSingular$Type;->ITEM:Lcom/htc/sdcardwizard/utils/PluralSingular$Type;

    invoke-direct {v2, p1, v3}, Lcom/htc/sdcardwizard/utils/PluralSingular;-><init>(Landroid/content/Context;Lcom/htc/sdcardwizard/utils/PluralSingular$Type;)V

    .line 28
    .local v2, psItems:Lcom/htc/sdcardwizard/utils/PluralSingular;
    new-instance v3, Lcom/htc/sdcardwizard/CategoryItem;

    const v4, 0x7f040003

    sget-object v5, Lcom/htc/sdcardwizard/handler/CategoryID;->TEMP_FILES:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v3, p1, v4, v5, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    iput-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->tempFilesItem:Lcom/htc/sdcardwizard/CategoryItem;

    .line 29
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/htc/sdcardwizard/CategoryItem;

    const v4, 0x7f040005

    sget-object v5, Lcom/htc/sdcardwizard/handler/CategoryID;->APPLICATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v3, p1, v4, v5, v1}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    :goto_0
    iput-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->appsItem:Lcom/htc/sdcardwizard/CategoryItem;

    .line 33
    new-instance v3, Lcom/htc/sdcardwizard/CategoryList;

    invoke-direct {v3}, Lcom/htc/sdcardwizard/CategoryList;-><init>()V

    iput-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    .line 35
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f04000b

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->FOOTPRINTS:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v2}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f04000c

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->EXP_FOOTPRINTS:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f04000f

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->TRIPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v2}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040010

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->EXP_TRIPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040011

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICE_RECOGNITION:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f04000a

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->GALLERY:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040007

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->MUSIC:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040012

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->SHOW_ME:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v2}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040013

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->RINGTONES:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v2}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040014

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->NOTIFICATION:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v2}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040015

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->ALARM:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v2}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040008

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->WATCH:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v2}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040016

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->BROWSER:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040017

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->ATTACHMENTS_MAIL:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040009

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICE_RECORDER:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040019

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->READER:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v2}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f040018

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->WALLPAPER:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f04000d

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->MAPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    new-instance v4, Lcom/htc/sdcardwizard/CategoryItem;

    const v5, 0x7f04000e

    sget-object v6, Lcom/htc/sdcardwizard/handler/CategoryID;->VOICES_FOR_LOCATIONS:Lcom/htc/sdcardwizard/handler/CategoryID;

    invoke-direct {v4, p1, v5, v6, v0}, Lcom/htc/sdcardwizard/CategoryItem;-><init>(Landroid/content/Context;ILcom/htc/sdcardwizard/handler/CategoryID;Lcom/htc/sdcardwizard/utils/PluralSingular;)V

    invoke-virtual {v3, v4}, Lcom/htc/sdcardwizard/CategoryList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void

    .line 29
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getApplicationsItem()Lcom/htc/sdcardwizard/CategoryItem;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItems;->appsItem:Lcom/htc/sdcardwizard/CategoryItem;

    return-object v0
.end method

.method public getContentItems()Lcom/htc/sdcardwizard/CategoryList;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    return-object v0
.end method

.method public getContentItems(Landroid/app/Activity;Z)Lcom/htc/sdcardwizard/CategoryList;
    .locals 1
    .parameter "owner"
    .parameter "isExternalStorage"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    return-object v0
.end method

.method public getTempFilesItem()Lcom/htc/sdcardwizard/CategoryItem;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItems;->tempFilesItem:Lcom/htc/sdcardwizard/CategoryItem;

    return-object v0
.end method

.method public update(Landroid/app/Activity;Lcom/htc/sdcardwizard/UpdateListener;)V
    .locals 5
    .parameter "owner"
    .parameter "listener"

    .prologue
    .line 95
    sget-object v3, Lcom/htc/sdcardwizard/CategoryItems;->TAG:Ljava/lang/String;

    const-string v4, "update"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->tempFilesItem:Lcom/htc/sdcardwizard/CategoryItem;

    invoke-virtual {v3, p1}, Lcom/htc/sdcardwizard/CategoryItem;->updateState(Landroid/app/Activity;)V

    .line 99
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->appsItem:Lcom/htc/sdcardwizard/CategoryItem;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->appsItem:Lcom/htc/sdcardwizard/CategoryItem;

    invoke-virtual {v3, p1}, Lcom/htc/sdcardwizard/CategoryItem;->updateState(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/CategoryList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdcardwizard/CategoryItem;

    .line 107
    .local v2, item:Lcom/htc/sdcardwizard/CategoryItem;
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/htc/sdcardwizard/CategoryItem;->updateState(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/htc/sdcardwizard/CategoryItem;
    :catch_1
    move-exception v0

    .line 103
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/htc/sdcardwizard/CategoryItems;->contentItems:Lcom/htc/sdcardwizard/CategoryList;

    sget-object v4, Lcom/htc/sdcardwizard/CategoryItems;->sizeComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    new-instance v3, Lcom/htc/sdcardwizard/CategoryItems$1;

    invoke-direct {v3, p0, p2}, Lcom/htc/sdcardwizard/CategoryItems$1;-><init>(Lcom/htc/sdcardwizard/CategoryItems;Lcom/htc/sdcardwizard/UpdateListener;)V

    invoke-virtual {p1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method
