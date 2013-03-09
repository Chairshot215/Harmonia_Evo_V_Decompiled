.class Lcom/htc/android/mail/ManageRecipient$ViewHolder;
.super Ljava/lang/Object;
.source "ManageRecipient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ManageRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public checkBox:Lcom/htc/widget/HtcListItemCheckBox;

.field public imageTitle:Lcom/htc/widget/HtcListItemTileImage;

.field public textLine:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ManageRecipient$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/htc/android/mail/ManageRecipient$ViewHolder;-><init>()V

    return-void
.end method
