.class public Lcom/android/settings/framework/os/HtcMessageParcel;
.super Ljava/lang/Object;
.source "HtcMessageParcel.java"


# instance fields
.field public args:Ljava/lang/Object;

.field public id:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "id"
    .parameter "args"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    .line 32
    return-void
.end method
