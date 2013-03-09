.class Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$2;
.super Ljava/lang/Object;
.source "ConfigUpdatesAndEventsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$2;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity$2;->this$0:Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;->finish()V

    .line 313
    return-void
.end method
