.class public Lcom/android/systemui/Nyandroid;
.super Landroid/app/Activity;
.source "Nyandroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Nyandroid$Board;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBoard:Lcom/android/systemui/Nyandroid$Board;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Lcom/android/systemui/Nyandroid$Board;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/Nyandroid$Board;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/systemui/Nyandroid;->mBoard:Lcom/android/systemui/Nyandroid$Board;

    iget-object v0, p0, Lcom/android/systemui/Nyandroid;->mBoard:Lcom/android/systemui/Nyandroid$Board;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/Nyandroid;->mBoard:Lcom/android/systemui/Nyandroid$Board;

    new-instance v1, Lcom/android/systemui/Nyandroid$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/Nyandroid$1;-><init>(Lcom/android/systemui/Nyandroid;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/Nyandroid$Board;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid;->finish()V

    return-void
.end method
