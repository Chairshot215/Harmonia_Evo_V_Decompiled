.class public Lcom/futuredial/BaseThread$ThreadMessageID;
.super Ljava/lang/Object;
.source "BaseThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/BaseThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThreadMessageID"
.end annotation


# static fields
.field public static final MSG_PARSERPOLICY:I = 0x66

.field public static final MSG_PARSERSTATUS:I = 0x68

.field public static final MSG_READSTATUS:I = 0x65

.field public static final MSG_WRITESTATUS:I = 0x69


# instance fields
.field final synthetic this$0:Lcom/futuredial/BaseThread;


# direct methods
.method public constructor <init>(Lcom/futuredial/BaseThread;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/futuredial/BaseThread$ThreadMessageID;->this$0:Lcom/futuredial/BaseThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
