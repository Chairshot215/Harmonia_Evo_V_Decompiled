.class Lcom/android/i18n/addressinput/AddressWidget$1;
.super Ljava/lang/Object;
.source "AddressWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/AddressWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/i18n/addressinput/AddressWidget;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/AddressWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget$1;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget$1;->this$0:Lcom/android/i18n/addressinput/AddressWidget;

    #calls: Lcom/android/i18n/addressinput/AddressWidget;->updateFields()V
    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->access$000(Lcom/android/i18n/addressinput/AddressWidget;)V

    .line 152
    return-void
.end method
