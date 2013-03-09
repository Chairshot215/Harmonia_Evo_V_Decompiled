.class Lcom/android/keychain/KeyChainActivity$ViewHolder;
.super Ljava/lang/Object;
.source "KeyChainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keychain/KeyChainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mAliasTextView:Landroid/widget/TextView;

.field mRadioButton:Landroid/widget/RadioButton;

.field mSubjectTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keychain/KeyChainActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/keychain/KeyChainActivity$ViewHolder;-><init>()V

    return-void
.end method
