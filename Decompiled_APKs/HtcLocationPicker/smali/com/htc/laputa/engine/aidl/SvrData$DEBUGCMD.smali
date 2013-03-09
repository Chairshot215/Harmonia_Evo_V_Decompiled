.class public Lcom/htc/laputa/engine/aidl/SvrData$DEBUGCMD;
.super Ljava/lang/Object;
.source "SvrData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/SvrData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DEBUGCMD"
.end annotation


# static fields
.field public static final GETDKVERSION:I = 0x3

.field public static final GETR66MAXMEM:I = 0x1

.field public static final GETR66MEM:I = 0x0

.field public static final RESETR66MAXMEM:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/aidl/SvrData;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/aidl/SvrData;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/htc/laputa/engine/aidl/SvrData$DEBUGCMD;->this$0:Lcom/htc/laputa/engine/aidl/SvrData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
