.class final Lcom/android/mms/transaction/MessagingNotification$1;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_id:I

.field final synthetic val$_nm:Landroid/app/NotificationManager;

.field final synthetic val$_tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$_nm:Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$_tag:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$_id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$_nm:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$_tag:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/transaction/MessagingNotification$1;->val$_id:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 899
    return-void
.end method
