.class public Lcom/android/phone/nbpcd/NBPCDUtility$MenuButtonListener;
.super Ljava/lang/Object;
.source "NBPCDUtility.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuButtonListener"
.end annotation


# instance fields
.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0
    .parameter "window"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDUtility$MenuButtonListener;->mWindow:Landroid/view/Window;

    .line 136
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDUtility$MenuButtonListener;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDUtility$MenuButtonListener;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x52

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 143
    :cond_0
    return-void
.end method
