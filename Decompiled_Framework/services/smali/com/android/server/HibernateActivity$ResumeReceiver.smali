.class Lcom/android/server/HibernateActivity$ResumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HibernateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HibernateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HibernateActivity;


# direct methods
.method constructor <init>(Lcom/android/server/HibernateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HibernateActivity$ResumeReceiver;->this$0:Lcom/android/server/HibernateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/HibernateActivity$ResumeReceiver;->this$0:Lcom/android/server/HibernateActivity;

    invoke-virtual {v0}, Lcom/android/server/HibernateActivity;->finish()V

    return-void
.end method
