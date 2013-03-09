.class public Lcom/futuredial/publicobj/RetCode$CommucationError;
.super Ljava/lang/Object;
.source "RetCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/publicobj/RetCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommucationError"
.end annotation


# static fields
.field public static final DERR_ABORTBYPEER:I = 0x6c

.field public static final DERR_CONNECT:I = 0x67

.field public static final DERR_CONNECTIONAORT:I = 0x6e

.field public static final DERR_CONREFUSED:I = 0x6b

.field public static final DERR_FETCHUUIDS:I = 0x6d

.field public static final DERR_NEEDPW:I = 0x69

.field public static final DERR_OPENBT:I = 0x68

.field public static final DERR_RECVDATA:I = 0x65

.field public static final DERR_SDFAIL:I = 0x6a

.field public static final DERR_SENDDATA:I = 0x66

.field public static final DERR_TIMEOUT:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/futuredial/publicobj/RetCode;


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/RetCode;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lcom/futuredial/publicobj/RetCode$CommucationError;->this$0:Lcom/futuredial/publicobj/RetCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
