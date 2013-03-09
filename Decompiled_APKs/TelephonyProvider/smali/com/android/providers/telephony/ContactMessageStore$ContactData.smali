.class public Lcom/android/providers/telephony/ContactMessageStore$ContactData;
.super Ljava/lang/Object;
.source "ContactMessageStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ContactMessageStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactData"
.end annotation


# instance fields
.field contactId:J

.field contactName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/telephony/ContactMessageStore;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/ContactMessageStore;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/providers/telephony/ContactMessageStore$ContactData;->this$0:Lcom/android/providers/telephony/ContactMessageStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
