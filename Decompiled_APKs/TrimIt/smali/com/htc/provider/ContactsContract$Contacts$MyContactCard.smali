.class public final Lcom/htc/provider/ContactsContract$Contacts$MyContactCard;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract$Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyContactCard"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIdIfHasData(Landroid/content/ContentResolver;)J
    .locals 2
    .parameter "resolver"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static final getPhoto()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final getPhoto(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resolver"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;->getPhoto(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final getViewIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;->getViewIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getViewOrEditIntent(Landroid/content/ContentResolver;)Landroid/content/Intent;
    .locals 1
    .parameter "resolver"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;->getViewOrEditIntent(Landroid/content/ContentResolver;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
