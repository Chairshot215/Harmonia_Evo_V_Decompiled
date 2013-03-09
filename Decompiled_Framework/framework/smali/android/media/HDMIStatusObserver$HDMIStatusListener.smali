.class public abstract Landroid/media/HDMIStatusObserver$HDMIStatusListener;
.super Ljava/lang/Object;
.source "HDMIStatusObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HDMIStatusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HDMIStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/HDMIStatusObserver;


# direct methods
.method public constructor <init>(Landroid/media/HDMIStatusObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/media/HDMIStatusObserver$HDMIStatusListener;->this$0:Landroid/media/HDMIStatusObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onPlug()V
.end method

.method public abstract onUnPlug()V
.end method
