.class Lfr/clockwidget/lpsense/AppPickerActivity$3;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/clockwidget/lpsense/AppPickerActivity;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$3;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 966
    iget-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$3;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity;->clearApplication()V
    invoke-static {v0}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$14(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    .line 967
    return-void
.end method
