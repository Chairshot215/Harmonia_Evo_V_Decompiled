.class Lcom/redbend/vdm/SessionStateNotifier$NativeInitiator;
.super Ljava/lang/Object;
.source "SessionStateNotifier.java"

# interfaces
.implements Lcom/redbend/vdm/SessionInitiator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/SessionStateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeInitiator"
.end annotation


# instance fields
.field private nativeInitiatorId:Ljava/lang/String;

.field final synthetic this$0:Lcom/redbend/vdm/SessionStateNotifier;


# direct methods
.method constructor <init>(Lcom/redbend/vdm/SessionStateNotifier;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/redbend/vdm/SessionStateNotifier$NativeInitiator;->this$0:Lcom/redbend/vdm/SessionStateNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/redbend/vdm/SessionStateNotifier$NativeInitiator;->nativeInitiatorId:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/redbend/vdm/SessionStateNotifier$NativeInitiator;->nativeInitiatorId:Ljava/lang/String;

    return-object v0
.end method
