.class Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field headerSwitchItem:Landroid/view/View;

.field icon:Landroid/widget/ImageView;

.field summary:Landroid/widget/TextView;

.field switch_:Lcom/htc/widget/HtcToggleButton;

.field final synthetic this$1:Lcom/android/settings/Settings$HeaderAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/settings/Settings$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->this$1:Lcom/android/settings/Settings$HeaderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/Settings$HeaderAdapter;Lcom/android/settings/Settings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 989
    invoke-direct {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    return-void
.end method
