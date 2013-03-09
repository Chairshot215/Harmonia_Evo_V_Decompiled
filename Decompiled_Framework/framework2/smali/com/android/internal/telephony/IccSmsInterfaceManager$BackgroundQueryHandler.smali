.class final Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsDelettingSIMSMS:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDeleteThenLoading:Z
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDeleteThenLoading:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDeleteThenLoading:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$202(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, "content://sms/loadallsimsms2db"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;
    invoke-static {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$300(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    move-result-object v1

    const/16 v2, 0x4b0

    invoke-virtual {v1, v2, v4, v0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    const-string v1, "content://sms/loadalluimsms2db"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4b1
        :pswitch_0
    .end packed-switch
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsLoadingSIMSMS:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->access$002(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method
