.class public Lcom/htc/provider/ContactsContract$Groups$Favorite;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract$Groups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Favorite"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EXTRA_PERSON_ID:Ljava/lang/String; = "person_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/provider/ContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddFavoriteIntent(J)Landroid/content/Intent;
    .locals 1
    .parameter "userId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 594
    invoke-static {p0, p1}, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->getAddFavoriteIntent(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
