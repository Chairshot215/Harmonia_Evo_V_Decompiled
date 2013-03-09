.class public final Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
.super Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;
.source "ContactLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListItemCache"
.end annotation


# instance fields
.field public mCheck:Landroid/widget/ImageView;

.field public mNameView:Landroid/widget/TextView;

.field public mPhotoIcon:Landroid/widget/ImageView;

.field public mPos:I

.field public mType:I

.field public mTypeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mPos:I

    .line 228
    return-void
.end method
