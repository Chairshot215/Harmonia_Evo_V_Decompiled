.class Lcom/android/internal/telephony/SMSDispatcher$6;
.super Landroid/telephony/PhoneStateListener;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$6;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$6;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->updateCallState(I)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->access$300(Lcom/android/internal/telephony/SMSDispatcher;I)V

    return-void
.end method
