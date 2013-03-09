.class Lcom/android/mms/ui/MessageListAdapter$SimSms;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimSms"
.end annotation


# instance fields
.field public mIndexOnSim:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCdmaFormat:Z

.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$SimSms;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
