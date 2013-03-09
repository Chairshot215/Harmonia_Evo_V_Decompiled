.class public final Lcom/android/server/wm/InputManager$VirtualKeyPolicy;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VirtualKeyPolicy"
.end annotation


# instance fields
.field public mManual:Z

.field public mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/InputManager$VirtualKeyPolicy;->mOrientation:I

    return-void
.end method
