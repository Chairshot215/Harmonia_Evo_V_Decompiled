.class Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCycleStartDayChangeListener"
.end annotation


# static fields
.field private static final EXTRA_TEMPLATE:Ljava/lang/String; = "template"


# instance fields
.field final synthetic this$0:Lcom/htc/usage/DataUsageSummary;


# direct methods
.method private constructor <init>(Lcom/htc/usage/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;->this$0:Lcom/htc/usage/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/usage/DataUsageSummary;Lcom/htc/usage/DataUsageSummary$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;-><init>(Lcom/htc/usage/DataUsageSummary;)V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 3
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 1128
    const-string v0, "DataUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDateSet: day of Month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/usage/util/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPolicyEditor:Lcom/htc/usage/net/NetworkPolicyEditor;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$1300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/net/NetworkPolicyEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v1}, Lcom/htc/usage/DataUsageSummary;->access$1100(Lcom/htc/usage/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/htc/usage/net/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;I)V

    .line 1130
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;->this$0:Lcom/htc/usage/DataUsageSummary;

    const/4 v1, 0x1

    #calls: Lcom/htc/usage/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/htc/usage/DataUsageSummary;->access$2100(Lcom/htc/usage/DataUsageSummary;Z)V

    .line 1131
    iget-object v0, p0, Lcom/htc/usage/DataUsageSummary$OnCycleStartDayChangeListener;->this$0:Lcom/htc/usage/DataUsageSummary;

    #getter for: Lcom/htc/usage/DataUsageSummary;->mPreferenceFragment:Lcom/htc/usage/MyPreferenceFragment;
    invoke-static {v0}, Lcom/htc/usage/DataUsageSummary;->access$300(Lcom/htc/usage/DataUsageSummary;)Lcom/htc/usage/MyPreferenceFragment;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/htc/usage/MyPreferenceFragment;->setCycleStartDaySummary(I)V

    .line 1132
    return-void
.end method
