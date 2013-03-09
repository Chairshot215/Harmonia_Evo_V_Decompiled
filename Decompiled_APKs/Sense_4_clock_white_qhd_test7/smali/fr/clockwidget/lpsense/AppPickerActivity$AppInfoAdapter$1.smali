.class Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter$1;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter$1;->this$1:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    iput p2, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter$1;->val$position:I

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 494
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter$1;->this$1:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;
    invoke-static {v0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->access$0(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;)Lfr/clockwidget/lpsense/AppPickerActivity;

    move-result-object v0

    iget v1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter$1;->val$position:I

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity;->selectApplication(I)V
    invoke-static {v0, v1}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$17(Lfr/clockwidget/lpsense/AppPickerActivity;I)V

    .line 495
    const v0, 0x7f0a0005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 496
    return-void
.end method
