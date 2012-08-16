.class public Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
.super Landroid/net/fourG/net4GManager$RadioInfoTemperature;
.source "Wimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WimaxRadioInfoTemperature"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field m_nIdleMode:I

.field m_nIdleModeTimer:I

.field m_nPseudoMode:I

.field m_nSleepMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 898
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 808
    invoke-direct {p0}, Landroid/net/fourG/net4GManager$RadioInfoTemperature;-><init>()V

    .line 809
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 920
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    iget v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMaxTemp:I

    invoke-interface {v0, v1}, Landroid/net/fourG/wimax/IWimax4GManager;->setMaxTemperature(I)Z

    .line 921
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    iget v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMinTemp:I

    invoke-interface {v0, v1}, Landroid/net/fourG/wimax/IWimax4GManager;->setMinTemperature(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12

    .line 924
    :goto_e
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 925
    return-void

    .line 922
    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method public getCurrent()I
    .registers 2

    .prologue
    .line 841
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    return v0
.end method

.method public getPseudoIdentityEnabled()Z
    .registers 2

    .prologue
    .line 870
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nPseudoMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getWimaxIdleMode()Z
    .registers 2

    .prologue
    .line 858
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getWimaxIdleModeTimer()J
    .registers 3

    .prologue
    .line 866
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleModeTimer:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getWimaxRadioTemperature()F
    .registers 2

    .prologue
    .line 845
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    int-to-float v0, v0

    return v0
.end method

.method public getWimaxSleepMode()Z
    .registers 2

    .prologue
    .line 862
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nSleepMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public resetMinMax()Z
    .registers 3

    .prologue
    .line 850
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    const/16 v1, -0x270f

    invoke-interface {v0, v1}, Landroid/net/fourG/wimax/IWimax4GManager;->setMaxTemperature(I)Z

    .line 851
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    const/16 v1, 0x270f

    invoke-interface {v0, v1}, Landroid/net/fourG/wimax/IWimax4GManager;->setMinTemperature(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 854
    :goto_e
    const/4 v0, 0x1

    return v0

    .line 852
    :catch_10
    move-exception v0

    goto :goto_e
.end method

.method setValue(IIIII)V
    .registers 8
    .parameter "nTemperature"
    .parameter "nIdleMode"
    .parameter "nSleepMode"
    .parameter "nIdleModeTimer"
    .parameter "npseudoMode"

    .prologue
    .line 815
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    .line 816
    iput p2, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleMode:I

    .line 817
    iput p3, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nSleepMode:I

    .line 818
    iput p4, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleModeTimer:I

    .line 819
    iput p5, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nPseudoMode:I

    .line 821
    :try_start_a
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0}, Landroid/net/fourG/wimax/IWimax4GManager;->getMaxTemperature()I

    move-result v0

    iput v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMaxTemp:I

    .line 822
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0}, Landroid/net/fourG/wimax/IWimax4GManager;->getMinTemperature()I

    move-result v0

    iput v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMinTemp:I

    .line 824
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMaxTemp:I

    if-le p1, v0, :cond_29

    .line 825
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    iput v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMaxTemp:I

    .line 826
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    iget v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    invoke-interface {v0, v1}, Landroid/net/fourG/wimax/IWimax4GManager;->setMaxTemperature(I)Z

    .line 828
    :cond_29
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMinTemp:I

    if-ge p1, v0, :cond_38

    .line 829
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    iput v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMinTemp:I

    .line 830
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    iget v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    invoke-interface {v0, v1}, Landroid/net/fourG/wimax/IWimax4GManager;->setMinTemperature(I)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_38} :catch_39

    .line 834
    :cond_38
    :goto_38
    return-void

    .line 832
    :catch_39
    move-exception v0

    goto :goto_38
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WimaxRadioInfoTemperature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IdleMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SleepMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nSleepMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", IdleModeTimer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleModeTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nMaxTemp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMaxTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nMinTemp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMinTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PseudoMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nPseudoMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 888
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nSleepMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nIdleModeTimer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nPseudoMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 893
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMaxTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->m_nMinTemp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    return-void
.end method
