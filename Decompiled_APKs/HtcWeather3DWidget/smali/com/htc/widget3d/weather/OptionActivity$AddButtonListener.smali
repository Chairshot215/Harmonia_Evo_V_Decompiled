.class public Lcom/htc/widget3d/weather/OptionActivity$AddButtonListener;
.super Ljava/lang/Object;
.source "OptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget3d/weather/OptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AddButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget3d/weather/OptionActivity;


# direct methods
.method public constructor <init>(Lcom/htc/widget3d/weather/OptionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/widget3d/weather/OptionActivity$AddButtonListener;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/widget3d/weather/OptionActivity$AddButtonListener;->this$0:Lcom/htc/widget3d/weather/OptionActivity;

    #calls: Lcom/htc/widget3d/weather/OptionActivity;->launchAddCityActivity()V
    invoke-static {v0}, Lcom/htc/widget3d/weather/OptionActivity;->access$600(Lcom/htc/widget3d/weather/OptionActivity;)V

    .line 263
    return-void
.end method
