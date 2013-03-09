.class public Lcom/redbend/vdm/VdmTree$DFProperties;
.super Ljava/lang/Object;
.source "VdmTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/VdmTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DFProperties"
.end annotation


# static fields
.field public static final ACCESS_TYPE_ADD:I = 0x1

.field public static final ACCESS_TYPE_COPY:I = 0x2

.field public static final ACCESS_TYPE_DELETE:I = 0x4

.field public static final ACCESS_TYPE_EXEC:I = 0x8

.field public static final ACCESS_TYPE_GET:I = 0x10

.field public static final ACCESS_TYPE_REPLACE:I = 0x20

.field public static final DEFAULT_BEHAVIOR:I = 0x7f


# instance fields
.field final synthetic this$0:Lcom/redbend/vdm/VdmTree;


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/VdmTree;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/redbend/vdm/VdmTree$DFProperties;->this$0:Lcom/redbend/vdm/VdmTree;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
