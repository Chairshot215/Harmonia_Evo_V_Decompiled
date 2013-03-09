.class public Lcom/redbend/vdm/MultiGenericAlerts$GenericAlert;
.super Ljava/lang/Object;
.source "MultiGenericAlerts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/MultiGenericAlerts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericAlert"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public mark:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field public targetPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/redbend/vdm/MultiGenericAlerts;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/MultiGenericAlerts;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/redbend/vdm/MultiGenericAlerts$GenericAlert;->this$0:Lcom/redbend/vdm/MultiGenericAlerts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
