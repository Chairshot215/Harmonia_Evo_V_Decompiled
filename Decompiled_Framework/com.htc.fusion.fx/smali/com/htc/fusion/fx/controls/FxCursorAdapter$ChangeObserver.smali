.class Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "FxCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/controls/FxCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/controls/FxCursorAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/FxCursorAdapter$ChangeObserver;->this$0:Lcom/htc/fusion/fx/controls/FxCursorAdapter;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxCursorAdapter;->onContentChanged()V

    return-void
.end method
