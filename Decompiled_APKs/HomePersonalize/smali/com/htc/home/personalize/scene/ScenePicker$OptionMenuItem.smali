.class public Lcom/htc/home/personalize/scene/ScenePicker$OptionMenuItem;
.super Ljava/lang/Object;
.source "ScenePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/scene/ScenePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OptionMenuItem"
.end annotation


# instance fields
.field public icon:I

.field public name:I

.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$OptionMenuItem;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
