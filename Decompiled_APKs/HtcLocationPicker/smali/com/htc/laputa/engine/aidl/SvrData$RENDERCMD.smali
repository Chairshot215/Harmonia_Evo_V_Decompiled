.class public Lcom/htc/laputa/engine/aidl/SvrData$RENDERCMD;
.super Ljava/lang/Object;
.source "SvrData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/SvrData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RENDERCMD"
.end annotation


# static fields
.field public static final PAN_MAP:I = 0x3

.field public static final START_PANNING:I = 0x2

.field public static final START_RENDERING:I = 0x0

.field public static final STOP_PANNING:I = 0x4

.field public static final STOP_RENDERING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/aidl/SvrData;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/aidl/SvrData;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/laputa/engine/aidl/SvrData$RENDERCMD;->this$0:Lcom/htc/laputa/engine/aidl/SvrData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
