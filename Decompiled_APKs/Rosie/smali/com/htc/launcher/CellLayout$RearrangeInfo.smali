.class public Lcom/htc/launcher/CellLayout$RearrangeInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RearrangeInfo"
.end annotation


# instance fields
.field public from:Lcom/htc/launcher/CellInfo;

.field public rearranged:Z

.field final synthetic this$0:Lcom/htc/launcher/CellLayout;

.field public to:Lcom/htc/launcher/CellInfo;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/CellLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 2472
    iput-object p1, p0, Lcom/htc/launcher/CellLayout$RearrangeInfo;->this$0:Lcom/htc/launcher/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/CellLayout$RearrangeInfo;->rearranged:Z

    return-void
.end method
