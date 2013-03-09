.class public Lcom/futuredial/publicobj/TaskParameter$ReadParameters;
.super Ljava/lang/Object;
.source "TaskParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/publicobj/TaskParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadParameters"
.end annotation


# instance fields
.field public btDevice:Landroid/bluetooth/BluetoothDevice;

.field public commuClassName:Ljava/lang/String;

.field public commuPolicy:Ljava/lang/String;

.field final synthetic this$0:Lcom/futuredial/publicobj/TaskParameter;

.field public uuid:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 129
    iput-object p1, p0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->this$0:Lcom/futuredial/publicobj/TaskParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->commuClassName:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->commuPolicy:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 133
    iput-object v0, p0, Lcom/futuredial/publicobj/TaskParameter$ReadParameters;->uuid:[Ljava/lang/String;

    return-void
.end method
