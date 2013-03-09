.class public Lcom/htc/laputa/engine/aidl/SvrData$RET;
.super Ljava/lang/Object;
.source "SvrData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/aidl/SvrData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RET"
.end annotation


# static fields
.field public static final BOOLRESULT:Ljava/lang/String; = "BooleanResult"

.field public static final FINAL:Ljava/lang/String; = "1"

.field public static final GROUPBNDL:Ljava/lang/String; = "3"

.field public static final RETBNDLLIST:Ljava/lang/String; = "2"

.field public static final RETBUNDLE:Ljava/lang/String; = "5"

.field public static final RETURNVALUE:Ljava/lang/String; = "4"


# instance fields
.field final synthetic this$0:Lcom/htc/laputa/engine/aidl/SvrData;


# direct methods
.method public constructor <init>(Lcom/htc/laputa/engine/aidl/SvrData;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/laputa/engine/aidl/SvrData$RET;->this$0:Lcom/htc/laputa/engine/aidl/SvrData;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
