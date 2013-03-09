.class Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread$1;
.super Ljava/lang/Object;
.source "SkinCustomizeService.java"

# interfaces
.implements Lcom/htc/home/personalize/widget/SkinPickerAdapter$ApplySkinListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread$1;->this$1:Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyComplete()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public notifyFail()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
