.class Lcom/google/android/talk/DrawerLayout$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/DrawerLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/DrawerLayout;


# direct methods
.method constructor <init>(Lcom/google/android/talk/DrawerLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/talk/DrawerLayout$1;->this$0:Lcom/google/android/talk/DrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/android/talk/DrawerLayout$1;->this$0:Lcom/google/android/talk/DrawerLayout;

    iget-object v0, p0, Lcom/google/android/talk/DrawerLayout$1;->this$0:Lcom/google/android/talk/DrawerLayout;

    invoke-virtual {v0}, Lcom/google/android/talk/DrawerLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/talk/DrawerLayout;->setExpanded(Z)V

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
