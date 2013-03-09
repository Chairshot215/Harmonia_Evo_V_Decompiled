.class final Lcom/htc/taskmanager/CustomizeBase$1;
.super Ljava/lang/Object;
.source "CustomizeBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/taskmanager/CustomizeBase;->configureMainActivity(Lcom/htc/taskmanager/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/htc/taskmanager/MainActivity;


# direct methods
.method constructor <init>(Lcom/htc/taskmanager/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/taskmanager/CustomizeBase$1;->val$activity:Lcom/htc/taskmanager/MainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/taskmanager/CustomizeBase$1;->val$activity:Lcom/htc/taskmanager/MainActivity;

    invoke-virtual {v0}, Lcom/htc/taskmanager/MainActivity;->onRefreshClick()V

    .line 60
    return-void
.end method
