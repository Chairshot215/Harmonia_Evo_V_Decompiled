.class Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener$1;
.super Ljava/lang/Object;
.source "PersonalizeMain.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener$1;->this$1:Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener;

    iput-object p2, p0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "bIsChecked"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeMain$AddToHomeItemClickListener$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;->setShortcutVisibility(Landroid/content/Context;Z)V

    .line 544
    return-void
.end method
