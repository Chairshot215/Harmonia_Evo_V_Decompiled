.class public Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;
.super Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;
.source "ContactDetailUpdatesAndEventsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateCache"
.end annotation


# instance fields
.field primaryView:Landroid/widget/TextView;

.field secondaryView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

.field timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "type"

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    .line 927
    invoke-direct {p0, p2}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    .line 928
    return-void
.end method
