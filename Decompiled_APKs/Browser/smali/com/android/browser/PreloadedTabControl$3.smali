.class Lcom/android/browser/PreloadedTabControl$3;
.super Landroid/webkit/SearchBox$SearchBoxListener;
.source "PreloadedTabControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/PreloadedTabControl;->searchBoxCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PreloadedTabControl;


# direct methods
.method constructor <init>(Lcom/android/browser/PreloadedTabControl;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/browser/PreloadedTabControl$3;->this$0:Lcom/android/browser/PreloadedTabControl;

    invoke-direct {p0}, Landroid/webkit/SearchBox$SearchBoxListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelComplete(Z)V
    .locals 3
    .parameter "called"

    .prologue
    .line 115
    const-string v0, "PreloadedTabControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query cancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
